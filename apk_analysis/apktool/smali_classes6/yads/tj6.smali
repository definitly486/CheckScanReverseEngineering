.class public final Lyads/tj6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wz3;


# instance fields
.field public final a:Lyads/qh4;


# direct methods
.method public constructor <init>(Lyads/qh4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/tj6;->a:Lyads/qh4;

    return-void
.end method


# virtual methods
.method public final getCountDownProgress()Landroid/widget/TextView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMuteControl()Landroid/widget/CheckBox;
    .locals 2

    iget-object p0, p0, Lyads/tj6;->a:Lyads/qh4;

    iget-object p0, p0, Lyads/qh4;->c:Lyads/e55;

    sget-object v0, Lyads/qh4;->g:[Lze4;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    return-object p0
.end method

.method public final getVideoProgress()Landroid/widget/ProgressBar;
    .locals 2

    iget-object p0, p0, Lyads/tj6;->a:Lyads/qh4;

    iget-object p0, p0, Lyads/qh4;->d:Lyads/e55;

    sget-object v0, Lyads/qh4;->g:[Lze4;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method
