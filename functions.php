<?php

include_once 'connection.php';

class Spotify{
    public $conn;

    function __construct() {

        $this->conn = new mysqli( HOST, USERNAME, PASSWORD, DB ) or die('connection refused');

    }

    function findFollowers( $username )
    {
        $followers = [];

        $sql = "SELECT `us`.`username` as `user`, `users`.`username` as `followings` FROM `followings`
                INNER JOIN `users` as `us`
                ON `us`.`ID` = `followings`.`UID`
                INNER JOIN `users`
                ON `users`.`ID` = `followings`.`FID`
                WHERE `us`.`username` = '{$username}'"
        ;

        $result = $this->conn->query( $sql );
        
        if($result->num_rows>0):
            foreach ($result as $person) {
                array_push( $followers, $person );
            }
        endif;

        return $followers;

    }

    function findFollowings( $username )
    {
        $followings = [];

        $sql = "SELECT `us`.`username` as `user`, `users`.`username` as `follower` FROM `followers`
                INNER JOIN `users` as `us`
                ON `us`.`ID` = `followers`.`UID`
                INNER JOIN `users`
                ON `users`.`ID` = `followers`.`FID`
                WHERE `us`.`username` = {$username}"
        ;

        $result = $this->conn->query( $sql );
        
        if($result->num_rows>0):
            foreach ($result as $person) {
                array_push( $followings, $person );
            }
        endif;

        return $followings;
    }

    function UsersLikeMusics( )
    {
        $datas = [];

        $sql = "SELECT `users`.`username`, `musics`.`Name` FROM `users`
                INNER JOIN `likedlists`
                ON `users`.`ID` = `likedlists`.`UID`
                INNER JOIN `musics`
                ON `musics`.`ID` = `likedlists`.`MID`"
        ;

        $result = $this->conn->query( $sql );
        
        if($result->num_rows>0):
            foreach ($result as $data) {
                array_push( $datas, $data );
            }
        endif;

        return $datas;
    }

    function CountMusicsLikeByUser( )
    {
        $datas = [];
        $sql = "SELECT `users`.`username` , COUNT(`musics`.`Name`) as `count` FROM `users`
                INNER JOIN `likedlists`
                ON `users`.`ID` = `likedlists`.`UID`
                INNER JOIN `musics`
                ON `musics`.`ID` = `likedlists`.`MID`
                GROUP BY `users`.`username`"
        ;

        $result = $this->conn->query( $sql );
        
        if($result->num_rows>0):
            foreach ($result as $data) {
                array_push( $datas, $data );
            }
        endif;

        return $datas;
    }

    function CountMusicsPlayedByUser( )
    {
        $datas = [];
        $sql = "SELECT `users`.`username`, COUNT(`musics`.`Name`) as `count` FROM `playedmusics`
                INNER JOIN `users`
                ON `playedmusics`.`UID` = `users`.`ID`
                INNER JOIN `musics`
                ON `playedmusics`.`MID` = `musics`.`ID`
                GROUP BY `users`.`username`"
        ;

        $result = $this->conn->query( $sql );
        
        if($result->num_rows>0):
            foreach ($result as $data) {
                array_push( $datas, $data );
            }
        endif;

        return $datas;
    }

    function MusicsInPlaylists( $username )
    {
        $dats = [];
        $sql = "SELECT `users`.`username`, `musics`.`Name` FROM `playlistmusics`
                INNER JOIN `playlists`
                ON `playlistmusics`.`PLID` = `playlists`.`ID`
                INNER JOIN `musics`
                ON `playlistmusics`.`MID` = `musics`.`ID`
                INNER JOIN `users`
                ON `playlists`.`UID` = `users`.`ID`
                WHERE `users`.`username` = {$username}"
        ;

        $result = $this->conn->query( $sql );
        
        if($result->num_rows>0):
            foreach ($result as $data) {
                array_push( $datas, $data );
            }
        endif;

        return $datas;
    }

}