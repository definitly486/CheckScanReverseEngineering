.class public final Lyads/ly2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/SparseBooleanArray;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lyads/ly2;->a:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final a(I)Lyads/ly2;
    .locals 2

    .line 20
    iget-boolean v0, p0, Lyads/ly2;->b:Z

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lyads/ly2;->a:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-object p0

    .line 22
    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()Lyads/my2;
    .locals 1

    iget-boolean v0, p0, Lyads/ly2;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/ly2;->b:Z

    new-instance v0, Lyads/my2;

    iget-object p0, p0, Lyads/ly2;->a:Landroid/util/SparseBooleanArray;

    invoke-direct {v0, p0}, Lyads/my2;-><init>(Landroid/util/SparseBooleanArray;)V

    return-object v0

    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
