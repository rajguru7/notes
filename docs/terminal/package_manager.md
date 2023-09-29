**To check if any package is using the specified package**
```
brew uses --recursive --installed boost
solidity
```

**To check the dependencies of a package**
```
brew deps --tree --installed solidity  
solidity
└── boost
    ├── icu4c
    ├── xz
    └── zstd
        ├── lz4
        └── xz
```

**To remove the unused dependencies**
Refer [[1]][ext1]
```
brew autoremove
```

So to uninstall package with all its dependencies
```
brew uninstall <package>
brew autoremove
```

**To check size of installed brew packages**
```
brew list --formula | xargs -n1 -P8 -I {} \
    sh -c "brew info {} | egrep '[0-9]* files, ' | sed 's/^.*[0-9]* files, \(.*\)).*$/{} \1/'" | \
    sort -h -r -k2 - | column -t
```

## References

[1] <https://stackoverflow.com/questions/7323261/uninstall-remove-a-homebrew-package-including-all-its-dependencies>

[ext1]: https://stackoverflow.com/questions/7323261/uninstall-remove-a-homebrew-package-including-all-its-dependencies
