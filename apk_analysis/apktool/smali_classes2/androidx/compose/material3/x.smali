.class public final synthetic Landroidx/compose/material3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/x;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/compose/material3/x;->b:I

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Landroidx/compose/material3/DateInputKt$DateInputContent$3;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
