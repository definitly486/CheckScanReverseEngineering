.class public Lgs6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgs6$a;
    }
.end annotation


# static fields
.field public static final h:Ld31;

.field public static final i:Lx65;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Class;

.field public d:Luc3;

.field public final e:[Ljava/lang/Object;

.field public f:Lu39;

.field public g:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld31;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ld31;-><init>(I)V

    sput-object v0, Lgs6;->h:Ld31;

    new-instance v0, Lx65;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lx65;-><init>(I)V

    sput-object v0, Lgs6;->i:Lx65;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgs6;->d:Luc3;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgs6;->e:[Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lgs6;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(F)V
    .locals 1

    iget-object v0, p0, Lgs6;->d:Luc3;

    invoke-virtual {v0, p1}, Luc3;->b(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lgs6;->g:Ljava/lang/Float;

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lgs6;->e()Lgs6;

    move-result-object p0

    return-object p0
.end method

.method public e()Lgs6;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs6;

    iget-object v1, p0, Lgs6;->b:Ljava/lang/String;

    iput-object v1, v0, Lgs6;->b:Ljava/lang/String;

    iget-object v1, p0, Lgs6;->d:Luc3;

    invoke-virtual {v1}, Luc3;->a()Luc3;

    move-result-object v1

    iput-object v1, v0, Lgs6;->d:Luc3;

    iget-object p0, p0, Lgs6;->f:Lu39;

    iput-object p0, v0, Lgs6;->f:Lu39;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public h()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lgs6;->g:Ljava/lang/Float;

    return-object p0
.end method

.method public varargs i([F)V
    .locals 7

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lgs6;->c:Ljava/lang/Class;

    array-length v0, p1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Luf4$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    new-instance v0, Luf4$a;

    invoke-direct {v0}, Luf4;-><init>()V

    iput v2, v0, Luf4;->b:F

    aput-object v0, v1, v3

    aget p1, p1, v3

    new-instance v0, Luf4$a;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, p1}, Luf4$a;-><init>(FF)V

    aput-object v0, v1, v4

    goto :goto_1

    :cond_0
    aget v5, p1, v3

    new-instance v6, Luf4$a;

    invoke-direct {v6, v2, v5}, Luf4$a;-><init>(FF)V

    aput-object v6, v1, v3

    :goto_0
    if-ge v4, v0, :cond_1

    int-to-float v2, v4

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    aget v3, p1, v4

    new-instance v5, Luf4$a;

    invoke-direct {v5, v2, v3}, Luf4$a;-><init>(FF)V

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Luc3;

    invoke-direct {p1, v1}, Luc3;-><init>([Luf4$a;)V

    iput-object p1, p0, Lgs6;->d:Luc3;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgs6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgs6;->d:Luc3;

    invoke-virtual {p0}, Lyf4;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
