.class public final Lyads/ba6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkx2;->b:Lkx2;

    iput-object v0, p0, Lyads/ba6;->a:Ljava/util/List;

    iput-object v0, p0, Lyads/ba6;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lyads/ba6;->a:Ljava/util/List;

    .line 12
    iput-object p2, p0, Lyads/ba6;->b:Ljava/util/List;

    return-void
.end method
