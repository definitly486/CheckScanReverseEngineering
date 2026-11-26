.class public final synthetic Lm71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;
.implements Leh8$a;
.implements Lh06;
.implements Lgv9;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lm71;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lm71;->b:Ljava/lang/Object;

    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public b()V
    .locals 2

    iget-object p0, p0, Lm71;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/c3;

    iget-object v0, p0, Lcom/my/target/c3;->l:Lcom/my/target/t2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/t2;->e()V

    iget-object v1, v0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    invoke-interface {v1}, Lcom/my/target/n;->destroy()V

    iget-object v0, v0, Lcom/my/target/t2;->e:Lcom/my/target/o1;

    invoke-virtual {v0}, Lcom/my/target/o1;->b()V

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/c3;->o()V

    iget-object v0, p0, Lcom/my/target/c3;->d:Lcom/my/target/m2$a;

    iget-object p0, p0, Lcom/my/target/c3;->b:Lxda;

    invoke-virtual {v0, p0}, Lcom/my/target/m2$a;->b(Lao9;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lm71;->b:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;

    sget-object v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->m:[Lze4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->o()Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->sendSmsCodeFromReceiver(Ljava/lang/String;)V

    return-void
.end method

.method public createProgressiveMediaExtractor(Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .locals 0

    iget-object p0, p0, Lm71;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorsFactory;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->a(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lm71;->b:Ljava/lang/Object;

    check-cast p0, Lvl1;

    invoke-interface {p0}, Lvl1;->n()Lzl1;

    move-result-object p0

    return-object p0
.end method

.method public get()J
    .locals 2

    iget-object p0, p0, Lm71;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method
