.class public final Lyads/tf6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lyads/st;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/st;

    sget-object v1, Lyads/qb1;->b:Lyads/qb1;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lyads/st;-><init>(Lyads/db1;Lyads/qb1;)V

    iput-object v0, p0, Lyads/tf6;->a:Lyads/st;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/tf6;->b:Ljava/util/ArrayList;

    return-void
.end method
