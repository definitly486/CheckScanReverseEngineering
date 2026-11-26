.class public final synthetic Lui7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lui7;->b:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lui7;->b:I

    invoke-static {p0}, Landroidx/compose/foundation/ScrollKt;->a(I)Landroidx/compose/foundation/ScrollState;

    move-result-object p0

    return-object p0
.end method
