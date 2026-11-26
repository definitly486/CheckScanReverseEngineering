.class public Leh5;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field public c:Lgh5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgh5<",
            "+",
            "Leh5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Leh5;->r()Lgh5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lgh5;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-virtual {p0}, Leh5;->r()Lgh5;

    move-result-object v0

    invoke-virtual {v0}, Lgh5;->d()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leh5;->r()Lgh5;

    move-result-object p0

    invoke-virtual {p0}, Lgh5;->c()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Leh5;->r()Lgh5;

    move-result-object p0

    invoke-virtual {p0}, Lgh5;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Leh5;->r()Lgh5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgh5;->f(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Leh5;->r()Lgh5;

    move-result-object p0

    invoke-virtual {p0}, Lgh5;->e()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-virtual {p0}, Leh5;->r()Lgh5;

    move-result-object p0

    invoke-virtual {p0}, Lgh5;->a()V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    invoke-virtual {p0}, Leh5;->r()Lgh5;

    move-result-object p0

    invoke-virtual {p0}, Lgh5;->e()V

    return-void
.end method

.method public final r()Lgh5;
    .locals 1

    iget-object v0, p0, Leh5;->c:Lgh5;

    if-nez v0, :cond_0

    new-instance v0, Lgh5;

    invoke-direct {v0, p0}, Lgh5;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Leh5;->c:Lgh5;

    :cond_0
    return-object v0
.end method
