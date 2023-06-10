cd git-practice-03
cd dir3
cp bar bar_copy
git add bar
git add bar_copy
git commit -m "copy bar"
cd ..
git checkout main

git checkout -b branch1
cd dir1/dir2
git mv foo ../../dir1/foo
cd ..
rm -r dir2
cd ../dir3/
git rm bar_copy
cd ..
touch newfile1
git add newfile1
git commit -m "edit branch1"
git checkout main

git checkout -b branch2
cd dir1/dir2
git mv foo foo_modified
cd ..
mkdir dir3
cd dir3
touch newfile2
git add newfile2
cd ../..
rm -r dir3
git add dir3
git commit -m "edit branch2"
git checkout main
