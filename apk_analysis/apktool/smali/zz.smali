.class public final synthetic Lzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ZLll3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lzz;->b:Z

    iput-object p2, p0, Lzz;->c:Lll3;

    iput p3, p0, Lzz;->d:I

    iput p4, p0, Lzz;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-boolean v0, p0, Lzz;->b:Z

    iget-object v1, p0, Lzz;->c:Lll3;

    iget v2, p0, Lzz;->d:I

    iget v3, p0, Lzz;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/activity/compose/BackHandlerKt;->a(ZLll3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
