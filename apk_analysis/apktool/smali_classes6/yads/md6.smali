.class public final Lyads/md6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ld6;


# instance fields
.field public final a:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/md6;->a:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 12
    return-void
.end method

.method public final a(Lyads/kd6;)V
    .locals 0

    iget-object p0, p0, Lyads/md6;->a:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    check-cast p1, Lfg2;

    invoke-virtual {p1, p0}, Lfg2;->a(Landroid/view/Display;)V

    return-void
.end method
