.class public final Lpn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lon2;


# instance fields
.field public final a:Lnn2;

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lvy4;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnn2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpn2;->a:Lnn2;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lpn2;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(J)Lo08;
    .locals 0

    iget-object p0, p0, Lpn2;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0
.end method

.method public final b(JLjava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lpn2;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
