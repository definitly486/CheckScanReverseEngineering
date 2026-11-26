.class public final Lyads/ye3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/List;

.field public static final f:Ljava/util/List;


# instance fields
.field public final a:Lyads/ze3;

.field public final b:Ljava/util/Map;

.field public c:Z

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lyads/e75;->x:Lyads/e75;

    sget-object v1, Lyads/e75;->m:Lyads/e75;

    filled-new-array {v0, v1}, [Lyads/e75;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/ye3;->e:Ljava/util/List;

    sget-object v0, Lyads/e75;->y:Lyads/e75;

    sget-object v1, Lyads/e75;->n:Lyads/e75;

    filled-new-array {v0, v1}, [Lyads/e75;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/ye3;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lyads/ze3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ye3;->a:Lyads/ze3;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "failure_tracked"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lyads/ye3;->b:Ljava/util/Map;

    return-void
.end method
