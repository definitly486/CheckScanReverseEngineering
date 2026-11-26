.class public final Lyads/hw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final c:Lyads/hw4;


# instance fields
.field public final b:Lyads/my2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    new-instance v1, Lyads/hw4;

    new-instance v2, Lyads/my2;

    invoke-direct {v2, v0}, Lyads/my2;-><init>(Landroid/util/SparseBooleanArray;)V

    invoke-direct {v1, v2}, Lyads/hw4;-><init>(Lyads/my2;)V

    sput-object v1, Lyads/hw4;->c:Lyads/hw4;

    return-void
.end method

.method public constructor <init>(Lyads/my2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hw4;->b:Lyads/my2;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lyads/hw4;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lyads/hw4;

    iget-object p0, p0, Lyads/hw4;->b:Lyads/my2;

    iget-object p1, p1, Lyads/hw4;->b:Lyads/my2;

    invoke-virtual {p0, p1}, Lyads/my2;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/hw4;->b:Lyads/my2;

    invoke-virtual {p0}, Lyads/my2;->hashCode()I

    move-result p0

    return p0
.end method
