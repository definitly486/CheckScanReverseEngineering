.class public final synthetic Lyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc;->b:[Ljava/lang/String;

    iput-object p2, p0, Lyc;->c:Ljava/util/ArrayList;

    iput p3, p0, Lyc;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, p3

    check-cast v5, Ljava/util/List;

    iget-object v0, p0, Lyc;->b:[Ljava/lang/String;

    iget-object v1, p0, Lyc;->c:Ljava/util/ArrayList;

    iget v2, p0, Lyc;->d:I

    invoke-static/range {v0 .. v5}, Landroidx/room/AmbiguousColumnResolver;->b([Ljava/lang/String;Ljava/util/ArrayList;IIILjava/util/List;)Lj59;

    move-result-object p0

    return-object p0
.end method
