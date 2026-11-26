.class public final Lcom/warefly/checkscan/presentation/CiceroneActivity;
.super Leh5;
.source "SourceFile"


# static fields
.field public static final synthetic s:I


# instance fields
.field public final d:Lcl4;

.field public final e:Lcl4;

.field public final f:Lcl4;

.field public final g:Lcl4;

.field public final h:Lcl4;

.field public final i:Lcl4;

.field public final j:Lcl4;

.field public final k:Lcl4;

.field public final l:Lcl4;

.field public m:Ls68;

.field public final n:Lcom/warefly/checkscan/presentation/CiceroneActivity$d;

.field public final o:Lfu1;

.field public p:Landroid/app/AlertDialog;

.field public final q:Lcom/warefly/checkscan/presentation/CiceroneActivity$a;

.field public r:Lrx1;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Leh5;-><init>()V

    sget-object v0, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance v1, Lcom/warefly/checkscan/presentation/CiceroneActivity$f;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$f;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->d:Lcl4;

    new-instance v1, Lcom/warefly/checkscan/presentation/CiceroneActivity$g;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$g;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->e:Lcl4;

    sget-object v1, Loe0;->d:Lba8;

    new-instance v2, Lcom/warefly/checkscan/presentation/CiceroneActivity$h;

    invoke-direct {v2, p0, v1}, Lcom/warefly/checkscan/presentation/CiceroneActivity$h;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;Lkv6;)V

    invoke-static {v0, v2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->f:Lcl4;

    new-instance v1, Lcom/warefly/checkscan/presentation/CiceroneActivity$i;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$i;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->g:Lcl4;

    new-instance v1, Lcom/warefly/checkscan/presentation/CiceroneActivity$j;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$j;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->h:Lcl4;

    new-instance v1, Lcom/warefly/checkscan/presentation/CiceroneActivity$k;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$k;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->i:Lcl4;

    new-instance v1, Lcom/warefly/checkscan/presentation/CiceroneActivity$l;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$l;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->j:Lcl4;

    new-instance v1, Lcom/warefly/checkscan/presentation/CiceroneActivity$m;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$m;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->k:Lcl4;

    new-instance v1, Lcom/warefly/checkscan/presentation/CiceroneActivity$n;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$n;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->l:Lcl4;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/CiceroneActivity$d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v0}, Lzp;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->n:Lcom/warefly/checkscan/presentation/CiceroneActivity$d;

    new-instance v0, Lfu1;

    invoke-direct {v0}, Lfu1;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->o:Lfu1;

    new-instance v0, Lcom/warefly/checkscan/presentation/CiceroneActivity$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$a;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->q:Lcom/warefly/checkscan/presentation/CiceroneActivity$a;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Landroidx/core/splashscreen/SplashScreen;->Companion:Landroidx/core/splashscreen/SplashScreen$Companion;

    invoke-virtual {v0, p0}, Landroidx/core/splashscreen/SplashScreen$Companion;->installSplashScreen(Landroid/app/Activity;)Landroidx/core/splashscreen/SplashScreen;

    invoke-super {p0, p1}, Leh5;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lgf7;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->g:Lcl4;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lre;

    invoke-direct {v1, v2}, Lgf7;-><init>(Lre;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->q:Lcom/warefly/checkscan/presentation/CiceroneActivity$a;

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->v(Landroid/content/Intent;Z)V

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_0

    const-string v1, "LAUNCH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->t()Lcom/warefly/checkscan/presentation/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/a;->b:Ljf6;

    invoke-interface {v0, p1}, Ljf6;->Q(I)V

    :cond_1
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->e:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu07;

    new-instance v0, Lcom/warefly/checkscan/presentation/CiceroneActivity$e;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$e;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    invoke-interface {p1, p0, v0}, Lu07;->a(Lcom/warefly/checkscan/presentation/CiceroneActivity;Lcom/warefly/checkscan/presentation/CiceroneActivity$e;)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->v(Landroid/content/Intent;Z)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->o:Lfu1;

    invoke-virtual {v0}, Lfu1;->d()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->f:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam5;

    invoke-interface {v0}, Lam5;->b()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->h:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lvp;->b(Z)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public final onRestart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->s()Lrx1;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->o:Lfu1;

    invoke-virtual {p0, v0}, Lfu1;->b(Lcp2;)Z

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->h:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lvp;->b(Z)V

    invoke-super {p0}, Leh5;->onResume()V

    return-void
.end method

.method public final onResumeFragments()V
    .locals 6

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->f:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam5;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->n:Lcom/warefly/checkscan/presentation/CiceroneActivity$d;

    invoke-interface {v0, v1}, Lam5;->a(Lzl5;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->t()Lcom/warefly/checkscan/presentation/a;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/a;->k:Lhi0;

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v1, Lqj1;

    invoke-direct {v1, p0}, Lqj1;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    new-instance v2, Lmj1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lmj1;-><init>(Lgh4;I)V

    new-instance v1, Lhh4;

    sget-object v4, Lrm3;->e:Lrm3$l;

    sget-object v5, Lrm3;->c:Lrm3$d;

    invoke-direct {v1, v2, v4, v5}, Lhh4;-><init>(Lqx1;Lqx1;Lh6;)V

    invoke-virtual {v0, v1}, Ltq5;->a(Lls5;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->o:Lfu1;

    invoke-virtual {v0, v1}, Lfu1;->b(Lcp2;)Z

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->t()Lcom/warefly/checkscan/presentation/a;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/presentation/a;->j:Lct6;

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v1

    new-instance v2, Lrj1;

    invoke-direct {v2, p0, v3}, Lrj1;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lnj1;

    invoke-direct {p0, v2, v3}, Lnj1;-><init>(Lgh4;I)V

    new-instance v2, Lhh4;

    invoke-direct {v2, p0, v4, v5}, Lhh4;-><init>(Lqx1;Lqx1;Lh6;)V

    invoke-virtual {v1, v2}, Ltq5;->a(Lls5;)V

    invoke-virtual {v0, v2}, Lfu1;->b(Lcp2;)Z

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Leh5;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->t()Lcom/warefly/checkscan/presentation/a;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/a;->b:Ljf6;

    invoke-interface {v0}, Ljf6;->P0()I

    move-result v0

    const-string v1, "LAUNCH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->t()Lcom/warefly/checkscan/presentation/a;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/a;->b:Ljf6;

    invoke-interface {v0}, Ljf6;->P0()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->t()Lcom/warefly/checkscan/presentation/a;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/a;->b:Ljf6;

    invoke-interface {p0}, Ljf6;->P0()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Ljf6;->Q(I)V

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Leh5;->onStart()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LAUNCH_KEY"

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->t()Lcom/warefly/checkscan/presentation/a;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/a;->b:Ljf6;

    invoke-interface {p0, v0}, Ljf6;->Q(I)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized s()Lrx1;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->r:Lrx1;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->t()Lcom/warefly/checkscan/presentation/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/a;->a()Lrx1;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->r:Lrx1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final t()Lcom/warefly/checkscan/presentation/a;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->d:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/a;

    return-object p0
.end method

.method public final u()Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v0, 0x7f0a0211

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final v(Landroid/content/Intent;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->t()Lcom/warefly/checkscan/presentation/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/warefly/checkscan/presentation/a;->i:Ly22;

    sget-object v3, Lqo2;->a:Loi2;

    sget-object v3, Lsh2;->c:Lsh2;

    new-instance v4, Ltp;

    invoke-direct {v4, v1, p1, v0}, Ltp;-><init>(Lcom/warefly/checkscan/presentation/a;Landroid/content/Intent;Le02;)V

    const/4 v1, 0x2

    invoke-static {v2, v3, v0, v4, v1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    if-nez p2, :cond_3

    const-string v1, "tracking_link"

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    const-string v1, "event"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_0
    const-class v2, Lyp;

    invoke-static {v2, v1}, Lht3;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyp;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lyp;->a()V

    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_2
    if-eqz p1, :cond_8

    const-string v1, "deeplink"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->x(Landroid/net/Uri;Z)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_3

    :cond_6
    move-object v2, v1

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2, p2}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->x(Landroid/net/Uri;Z)V

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->i:Lcl4;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lou2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v3, Lou2;->c:Landroid/content/Intent;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lou2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lzl9;

    new-instance v3, Lcom/warefly/checkscan/presentation/CiceroneActivity$b;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$b;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    invoke-direct {v2, v3}, Lzl9;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity$b;)V

    iput-object v2, p1, Lu1;->b:Ljava/lang/Object;

    if-nez v1, :cond_7

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_4

    :cond_7
    move-object v2, v1

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v2}, Lu1;->g(Landroid/net/Uri;)Lz08;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v2, Lcom/warefly/checkscan/presentation/CiceroneActivity$c;

    invoke-direct {v2, v1, p0, p2}, Lcom/warefly/checkscan/presentation/CiceroneActivity$c;-><init>(Landroid/net/Uri;Lcom/warefly/checkscan/presentation/CiceroneActivity;Z)V

    const/4 p2, 0x1

    invoke-static {p1, v0, v2, p2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->o:Lfu1;

    invoke-virtual {p0, p1}, Lfu1;->b(Lcp2;)Z

    :cond_8
    :goto_5
    return-void
.end method

.method public final w()Z
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->u()Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->u()Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/warefly/checkscan/presentation/flows/account/view/AccountFlowFragment;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->u()Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->u()Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    iget v0, v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->o:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->p:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->u()Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    move-result-object p0

    instance-of p0, p0, Lcom/warefly/checkscan/presentation/flows/promotions/view/PromotionFlowFragment;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final x(Landroid/net/Uri;Z)V
    .locals 12

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f14024a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lkd$c$a$a;

    const-string v3, "deeplink"

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "app_open"

    invoke-direct {v1, v3, v0}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1}, Lkd;->a()V

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f14024b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f1401e9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->j:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce2;

    invoke-virtual {v1, v0}, Lce2;->a(Landroid/net/Uri;)Lcom/warefly/checkscan/presentation/Deeplink;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->o:Lfu1;

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->t()Lcom/warefly/checkscan/presentation/a;

    move-result-object v10

    new-instance v0, Luj1;

    const-string v5, "openExternally(Lcom/warefly/checkscan/deeplinks/openUrl/OpenUrlTarget$External;Ljava/lang/String;)Z"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/warefly/checkscan/presentation/CiceroneActivity;

    const-string v4, "openExternally"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    new-instance v0, Lvj1;

    const-string v5, "openUnityOfferwall(Lcom/warefly/checkscan/deeplinks/openUrl/UnityOfferwallLink;Lkotlin/jvm/functions/Function0;)V"

    const-string v4, "openUnityOfferwall"

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    new-instance v2, Lup;

    invoke-direct {v2, v10, v7, v11, v0}, Lup;-><init>(Lcom/warefly/checkscan/presentation/a;Lcom/warefly/checkscan/presentation/Deeplink;Luj1;Lvj1;)V

    iget-object v0, v10, Lcom/warefly/checkscan/presentation/a;->a:Lkv;

    invoke-virtual {v0}, Lkv;->a()Lg18;

    move-result-object v0

    sget-object v3, Lne7;->c:Lhe7;

    invoke-virtual {v0, v3}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v3, Lqp;

    invoke-direct {v3, v10, v2}, Lqp;-><init>(Lcom/warefly/checkscan/presentation/a;Lup;)V

    new-instance v4, Lop;

    invoke-direct {v4, v3, v1}, Lop;-><init>(Lgh4;I)V

    new-instance v3, Lp4;

    invoke-direct {v3, v2, v8}, Lp4;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lpp;

    invoke-direct {v2, v3, v1}, Lpp;-><init>(Lgh4;I)V

    invoke-virtual {v0, v4, v2}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v0

    goto :goto_2

    :cond_4
    instance-of v2, v7, Lcom/warefly/checkscan/presentation/Deeplink$n;

    if-eqz v2, :cond_5

    check-cast v7, Lcom/warefly/checkscan/presentation/Deeplink$n;

    invoke-virtual {v10, v7, v1, v11, v0}, Lcom/warefly/checkscan/presentation/a;->d(Lcom/warefly/checkscan/presentation/Deeplink$n;ZLuj1;Lvj1;)V

    new-instance v0, Lv87;

    sget-object v1, Lrm3;->b:Lrm3$f;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-instance v1, Lnp;

    invoke-direct {v1, v10, v7, v11, v0}, Lnp;-><init>(Lcom/warefly/checkscan/presentation/a;Lcom/warefly/checkscan/presentation/Deeplink;Luj1;Lvj1;)V

    new-instance v0, Lcq1;

    invoke-direct {v0, v1}, Lcq1;-><init>(Lh6;)V

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-virtual {v0}, Lqp1;->g()Lcp2;

    move-result-object v0

    :goto_2
    invoke-virtual {v9, v0}, Lfu1;->b(Lcp2;)Z

    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v8, :cond_7

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->s()Lrx1;

    move-result-object v0

    invoke-virtual {v9, v0}, Lfu1;->b(Lcp2;)Z

    :cond_7
    return-void
.end method
