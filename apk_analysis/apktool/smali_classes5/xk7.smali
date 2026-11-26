.class public final Lxk7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwk7;


# instance fields
.field public final a:Lk61;

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lvy4;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk61;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxk7;->a:Lk61;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lxk7;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmz7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmz7<",
            "Lwt0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lxk7;->a:Lk61;

    move-object v0, p4

    move-object p4, p3

    move-object p3, p5

    move-object p5, v0

    invoke-interface/range {p0 .. p5}, Lk61;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)Lo08;
    .locals 0

    iget-object p0, p0, Lxk7;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0
.end method

.method public final c(ILjava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lxk7;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
