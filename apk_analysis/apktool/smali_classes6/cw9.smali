.class public final synthetic Lcw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcw9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcw9;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lyads/h74;->c()Ldf4;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lyads/gf0;->e()Lyads/zn0;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
