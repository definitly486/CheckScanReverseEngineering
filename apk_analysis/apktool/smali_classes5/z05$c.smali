.class public final Lz05$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln54;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lz05$c;->a:Z

    iput-object p2, p0, Lz05$c;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lz05$c;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lm54;)Ll54;
    .locals 5

    iget-object v0, p1, Lm54;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lz05$c;->c:Ljava/util/ArrayList;

    if-lez v1, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v2, v3

    :cond_1
    new-instance v0, Lz05;

    iget-boolean v1, p0, Lz05$c;->a:Z

    iget-object p0, p0, Lz05$c;->b:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1, p0, v2}, Lz05;-><init>(Lm54;ZLjava/util/ArrayList;Ljava/util/List;)V

    return-object v0
.end method
