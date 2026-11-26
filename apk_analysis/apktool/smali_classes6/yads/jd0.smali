.class public final Lyads/jd0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q84;

.field public final b:Lyads/h75;


# direct methods
.method public constructor <init>(Lyads/q84;Lyads/h75;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/jd0;->a:Lyads/q84;

    iput-object p2, p0, Lyads/jd0;->b:Lyads/h75;

    return-void
.end method


# virtual methods
.method public final a(Lyads/id0;)V
    .locals 3

    iget-object v0, p0, Lyads/jd0;->b:Lyads/h75;

    const-string v1, "log_type"

    iget-object p1, p1, Lyads/id0;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lyads/g75;

    sget-object v0, Lyads/e75;->c:Lyads/e75;

    iget-object v0, p0, Lyads/jd0;->b:Lyads/h75;

    iget-object v1, v0, Lyads/h75;->a:Ljava/util/Map;

    iget-object v0, v0, Lyads/h75;->b:Lyads/c;

    const-string v2, "log"

    invoke-static {v1}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-direct {p1, v2, v1, v0}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p0, p0, Lyads/jd0;->a:Lyads/q84;

    invoke-virtual {p0, p1}, Lyads/q84;->a(Lyads/g75;)V

    return-void
.end method
