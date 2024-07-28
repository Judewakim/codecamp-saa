## create bucket
```sh
aws s3 mb s3://prefixes-fun-ab-52357
```

## create folder
```sh
aws s3api put-object --bucket="prefixes-fun-ab-52357" --key="hello/"
```

## create many folders
```sh
aws s3api put-object --bucket="prefixes-fun-ab-52357" --key="Lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/Etiam/ac/turpis/id/tellus/mattis/aliquam/Suspendisse/porttitor/sagittis/erat/ut/facilisis/leo/lacinia/sed/Vivamus/eget/molestie/ante/a/pulvinar/turpis/Phasellus/dictum/quis/nisl/ultricies/dignissim/Suspendisse/ullamcorper/justo/ac/eleifend/imperdiet/arcu/tortor/sagittis/ante/sed/semper/ex/tortor/at/risus/Curabitur/cursus/ultrices/porttitor/Nam/tincidunt/nunc/nec/erat/vehicula/tincidunt/Phasellus/id/vehicula/risus/Vivamus/ut/sem/auctor/fringilla/nunc/ut/fermentum/enim/Quisque/iaculis/vel/est/blandit/conguePellentesque/et/sodales/mauris/Ut/et/interdum/enim/ut/semper/magna/Sed/a/suscipit/quam/Donec/vehicula/feugiat/tellus/id/varius/ligula/faucibus/in/Sed/nec/finibus/ligula/Vestibulum/at/erat/nec/tortor/rhoncus/bibendum/id/in/massa/Pellentesque/ut/orci/sed/dolor/aliquam/varius/Interdum/et/malesuada/fames/ac/ante/ipsum/primis/in/faucibus/Donec/consequat/neque/a/libero/efficitur/posuere/Vivamus/congue/nunc/in/consectetur/eleifend"
```

## try to break the 1024 folder size limit
```sh
aws s3api put-object --bucket="prefixes-fun-ab-52357" --key="Lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/Etiam/ac/turpis/id/tellus/mattis/aliquam/Suspendisse/porttitor/sagittis/erat/ut/facilisis/leo/lacinia/sed/Vivamus/eget/molestie/ante/a/pulvinar/turpis/Phasellus/dictum/quis/nisl/ultricies/dignissim/Suspendisse/ullamcorper/justo/ac/eleifend/imperdiet/arcu/tortor/sagittis/ante/sed/semper/ex/tortor/at/risus/Curabitur/cursus/ultrices/porttitor/Nam/tincidunt/nunc/nec/erat/vehicula/tincidunt/Phasellus/id/vehicula/risus/Vivamus/ut/sem/auctor/fringilla/nunc/ut/fermentum/enim/Quisque/iaculis/vel/est/blandit/conguePellentesque/et/sodales/mauris/Ut/et/interdum/enim/ut/semper/magna/Sed/a/suscipit/quam/Donec/vehicula/feugiat/tellus/id/varius/ligula/faucibus/in/Sed/nec/finibus/ligula/Vestibulum/at/erat/nec/tortor/rhoncus/bibendum/id/in/massa/Pellentesque/ut/orci/sed/dolor/aliquam/varius/Interdum/et/malesuada/fames/ac/ante/ipsum/primis/in/faucibus/Donec/consequat/neque/a/libero/efficitur/posuere/Vivamus/congue/nunc/in/consectetur/eleifend/tortor/rhoncus/bibendum/id/in/massa/Pellentesque/ut/orci/sed/dolor/aliquam/varius/Interdum/et/malesuada/fames/ac/ante/ipsum/primis/in/faucibus/Donec/consequat/neque/a/libero/efficitur/posuere/Vivamus/congue/nunc/in/consectetur/eleifend" --body="hello.txt"
```