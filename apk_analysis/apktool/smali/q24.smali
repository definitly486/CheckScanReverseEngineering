.class public final synthetic Lq24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq24;->b:Ljava/lang/String;

    iput-object p3, p0, Lq24;->c:Ljava/util/List;

    iput p1, p0, Lq24;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lq24;->d:I

    check-cast p1, Landroidx/compose/foundation/text/input/TextFieldBuffer;

    iget-object v1, p0, Lq24;->b:Ljava/lang/String;

    iget-object p0, p0, Lq24;->c:Ljava/util/List;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->c(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/foundation/text/input/TextFieldBuffer;)Lj59;

    move-result-object p0

    return-object p0
.end method
