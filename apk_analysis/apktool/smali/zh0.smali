.class public final synthetic Lzh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lbm3;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzh0;->b:Ljava/lang/String;

    iput-object p2, p0, Lzh0;->c:Lbm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lzh0;->b:Ljava/lang/String;

    iget-object p0, p0, Lzh0;->c:Lbm3;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/BasicTooltipKt;->h(Ljava/lang/String;Lbm3;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
