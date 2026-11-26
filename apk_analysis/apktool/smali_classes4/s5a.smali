.class public final Ls5a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lik0;

.field public final b:Ljava/util/List;

.field public final c:Lpp9;


# direct methods
.method public constructor <init>(Ljava/util/List;Lpp9;Lik0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5a;->b:Ljava/util/List;

    iput-object p2, p0, Ls5a;->c:Lpp9;

    iput-object p3, p0, Ls5a;->a:Lik0;

    return-void
.end method


# virtual methods
.method public final a()Ls5a;
    .locals 3

    new-instance v0, Ls5a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ls5a;->c:Lpp9;

    iget-object p0, p0, Ls5a;->a:Lik0;

    invoke-direct {v0, v1, v2, p0}, Ls5a;-><init>(Ljava/util/List;Lpp9;Lik0;)V

    return-object v0
.end method
