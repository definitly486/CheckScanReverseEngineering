.class public final Lu67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls67;


# instance fields
.field public final a:Lfh8;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lu67$a;->f:Lu67$a;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    iput-object v0, p0, Lu67;->a:Lfh8;

    return-void
.end method


# virtual methods
.method public final varargs a([Lua3;)Lkq1;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Lt67;

    invoke-direct {v4, p0, v3}, Lt67;-><init>(Lu67;Lua3;)V

    new-instance v3, Lcq1;

    invoke-direct {v3, v4}, Lcq1;-><init>(Lh6;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lkq1;

    invoke-direct {p0, v0}, Lkq1;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method
