.class public final Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/KeyMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/KeyMappingKt;->commonKeyMapping-VSD1kLU(I)Landroidx/compose/foundation/text/KeyMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $systemShortcutModifiers:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$systemShortcutModifiers:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 4

    invoke-static {p1}, Landroidx/compose/foundation/text/KeyModifiersKt;->getModifiers-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$systemShortcutModifiers:I

    sget-object v2, Landroidx/compose/foundation/text/KeyModifiers;->Companion:Landroidx/compose/foundation/text/KeyModifiers$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/KeyModifiers$Companion;->getShift-AuQ4EfA()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/text/KeyModifiers;->plus-1uj4btU(II)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/KeyModifiers;->equals-impl0(II)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide p0

    sget-object v0, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getZ-EK5gGoQ()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_0
    return-object v3

    :cond_1
    iget p0, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$systemShortcutModifiers:I

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/KeyModifiers;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide p0

    sget-object v0, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getC-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getInsert-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadInsert-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getV-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getX-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getA-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getY-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getZ-EK5gGoQ()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->UNDO:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_7
    return-object v3

    :cond_8
    :goto_0
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_9
    invoke-virtual {v2}, Landroidx/compose/foundation/text/KeyModifiers$Companion;->getShift-AuQ4EfA()I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/KeyModifiers;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide p0

    sget-object v0, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionLeft-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadDirectionLeft-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionRight-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadDirectionRight-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_8

    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionUp-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadDirectionUp-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionDown-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadDirectionDown-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getPageUp-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadPageUp-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getPageDown-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadPageDown-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getMoveHome-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadMoveHome-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getMoveEnd-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadMoveEnd-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2

    :cond_11
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getInsert-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadInsert-EK5gGoQ()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_1

    :cond_12
    return-object v3

    :cond_13
    :goto_1
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_14
    :goto_2
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_15
    :goto_3
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_16
    :goto_4
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_17
    :goto_5
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_18
    :goto_6
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_19
    :goto_7
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_1a
    :goto_8
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_1b
    :goto_9
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_1c
    invoke-virtual {v2}, Landroidx/compose/foundation/text/KeyModifiers$Companion;->getNone-AuQ4EfA()I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/KeyModifiers;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_36

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide p0

    sget-object v0, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionLeft-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadDirectionLeft-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto/16 :goto_12

    :cond_1d
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionRight-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadDirectionRight-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto/16 :goto_11

    :cond_1e
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionUp-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadDirectionUp-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_10

    :cond_1f
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionDown-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadDirectionDown-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_20

    goto/16 :goto_f

    :cond_20
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionCenter-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->CENTER:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_21
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getPageUp-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadPageUp-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_22

    goto/16 :goto_e

    :cond_22
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getPageDown-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadPageDown-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_23

    goto/16 :goto_d

    :cond_23
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getMoveHome-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadMoveHome-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_24

    goto/16 :goto_c

    :cond_24
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getMoveEnd-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadMoveEnd-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_b

    :cond_25
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getEnter-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadEnter-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_a

    :cond_26
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getBackspace-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_27
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getDelete-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_28
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getPaste-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_29
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getCut-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_2a
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getCopy-EK5gGoQ()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_2b
    invoke-virtual {v0}, Landroidx/compose/ui/input/key/Key$Companion;->getTab-EK5gGoQ()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_2c

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->TAB:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_2c
    return-object v3

    :cond_2d
    :goto_a
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_2e
    :goto_b
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_2f
    :goto_c
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_30
    :goto_d
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_31
    :goto_e
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_32
    :goto_f
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_33
    :goto_10
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_34
    :goto_11
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_35
    :goto_12
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_36
    return-object v3
.end method
