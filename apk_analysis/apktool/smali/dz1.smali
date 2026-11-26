.class public final synthetic Ldz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;


# direct methods
.method public synthetic constructor <init>(ZLll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ldz1;->b:Z

    iput-object p2, p0, Ldz1;->c:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Ldz1;->b:Z

    iget-object p0, p0, Ldz1;->c:Lll3;

    invoke-static {v0, p0}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->d(ZLll3;)Lj59;

    move-result-object p0

    return-object p0
.end method
