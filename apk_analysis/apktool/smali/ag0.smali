.class public final synthetic Lag0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lvg5;


# direct methods
.method public synthetic constructor <init>(ZLvg5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lag0;->b:Z

    iput-object p2, p0, Lag0;->c:Lvg5;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lag0;->b:Z

    iget-object p0, p0, Lag0;->c:Lvg5;

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/BasicTextFieldKt;->k(ZLvg5;)Lj59;

    move-result-object p0

    return-object p0
.end method
