<?php
$contents = file_get_contents("./input/day01.txt");



$elves = explode("\n\n", $contents);

echo array_reduce($elves, function ($previous, $current) {
    $elf_total = array_sum(explode("\n", $current));
    if ($elf_total > $previous) {
        return $elf_total;
    }
    return $previous;
}, 0);

echo "\n";

echo array_sum(array_reduce($elves, function ($previous, $current) {
    $elf_total = array_sum(explode("\n", $current));
    if ($elf_total > $previous[0]) {
        $previous[0] = $elf_total;
        sort($previous);
        return $previous;
    }
    return $previous;
}, [0, 0, 0]));

echo "\n";
