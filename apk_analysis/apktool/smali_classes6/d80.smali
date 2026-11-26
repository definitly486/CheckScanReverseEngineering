.class public final synthetic Ld80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ld80;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Ld80;->b:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    invoke-static {p0}, Lyads/sc3;->a(Ly22;)Ly22;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lqo2;->a:Loi2;

    sget-object p0, Luy4;->a:Lhu3;

    invoke-static {p0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
