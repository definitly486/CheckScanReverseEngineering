.class public final Lyads/nt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/m15;


# static fields
.field public static final synthetic c:[Lze4;


# instance fields
.field public final a:Lyads/mt3;

.field public final b:Lyads/e55;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/nt3;

    const-string v1, "progressBar"

    const-string v2, "getProgressBar()Landroid/widget/ProgressBar;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/nt3;->c:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/mt3;

    invoke-direct {v0}, Lyads/mt3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/nt3;->a:Lyads/mt3;

    new-instance v0, Lyads/e55;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyads/nt3;->b:Lyads/e55;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lyads/nt3;->b:Lyads/e55;

    sget-object v0, Lyads/nt3;->c:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1, v0, v1}, Lyads/ze;->a(Landroid/widget/ProgressBar;JJ)V

    :cond_0
    return-void
.end method

.method public final a(JJ)V
    .locals 2

    .line 26
    iget-object p0, p0, Lyads/nt3;->b:Lyads/e55;

    sget-object v0, Lyads/nt3;->c:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 27
    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    .line 28
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    .line 29
    check-cast p0, Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    .line 30
    invoke-static {p0, p1, p2, p3, p4}, Lyads/ze;->a(Landroid/widget/ProgressBar;JJ)V

    :cond_0
    return-void
.end method
