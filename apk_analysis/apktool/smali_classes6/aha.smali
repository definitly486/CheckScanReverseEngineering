.class public final synthetic Laha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I

.field public final synthetic d:Lyads/gz1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;ILyads/gz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laha;->b:Ljava/util/ArrayList;

    iput p2, p0, Laha;->c:I

    iput-object p3, p0, Laha;->d:Lyads/gz1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Laha;->d:Lyads/gz1;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Laha;->b:Ljava/util/ArrayList;

    iget p0, p0, Laha;->c:I

    invoke-static {v1, p0, v0, p1}, Lyads/wy1;->a(Ljava/util/List;ILyads/gz1;Ljava/lang/String;)Lj59;

    move-result-object p0

    return-object p0
.end method
