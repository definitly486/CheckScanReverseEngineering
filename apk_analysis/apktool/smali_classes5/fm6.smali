.class public final synthetic Lfm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqx1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lgh4;


# direct methods
.method public synthetic constructor <init>(Lgh4;I)V
    .locals 0

    iput p2, p0, Lfm6;->b:I

    iput-object p1, p0, Lfm6;->c:Lgh4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lfm6;->b:I

    iget-object p0, p0, Lfm6;->c:Lgh4;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lls7;

    invoke-virtual {p0, p1}, Lls7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$b;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->e(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$b;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
