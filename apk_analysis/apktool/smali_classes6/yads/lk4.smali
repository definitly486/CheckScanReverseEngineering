.class public final Lyads/lk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tq4;


# instance fields
.field public final a:Lyads/gv5;

.field public final b:Lyads/zv3;


# direct methods
.method public constructor <init>(Lyads/gv5;)V
    .locals 1

    new-instance v0, Lyads/zv3;

    invoke-direct {v0}, Lyads/zv3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lk4;->a:Lyads/gv5;

    iput-object v0, p0, Lyads/lk4;->b:Lyads/zv3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lyads/lk4;->b:Lyads/zv3;

    sget-object v1, Lmx2;->b:Lmx2;

    invoke-virtual {v0, p1, v1}, Lyads/zv3;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lyads/lk4;->a:Lyads/gv5;

    invoke-interface {p0, p1}, Lyads/gv5;->a(Ljava/lang/String;)Lyads/fv5;

    return-void

    :cond_0
    sget-object p0, Lyads/d75;->c:Lyads/d75;

    return-void
.end method
