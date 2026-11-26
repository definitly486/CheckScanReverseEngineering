.class public final synthetic Lsu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsu9;->b:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lsu9;->b:F

    check-cast p1, Lyads/iw4;

    invoke-static {p0, p1}, Lyads/eq2;->a(FLyads/iw4;)V

    return-void
.end method
