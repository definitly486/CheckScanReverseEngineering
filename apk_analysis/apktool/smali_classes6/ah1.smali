.class public final synthetic Lah1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lyads/lq;
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lah1;->b:I

    iput-object p1, p0, Lah1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lah1;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lyads/c62;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lah1;->b:I

    iget-object p0, p0, Lah1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lm21;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->C(Lm21;Ljava/lang/Boolean;)Lm21;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lah1;->c:Ljava/lang/Object;

    check-cast p0, Lyads/t04;

    check-cast p1, Lyads/iw4;

    invoke-static {p0, p1}, Lyads/eq2;->a(Lyads/t04;Lyads/iw4;)V

    return-void
.end method
