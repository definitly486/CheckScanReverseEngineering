.class public final synthetic Lfe5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Lfm3;


# direct methods
.method public synthetic constructor <init>(Lfm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfe5;->b:Lfm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb36;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object p0, p0, Lfe5;->b:Lfm3;

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/MovableContentKt;->a(Lfm3;Lb36;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
