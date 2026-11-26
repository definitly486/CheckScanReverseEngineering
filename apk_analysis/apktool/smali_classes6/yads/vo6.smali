.class public final Lyads/vo6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/cq6;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lyads/cq6;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/vo6;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lyads/vo6;->a:Lyads/cq6;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
