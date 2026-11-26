.class public final synthetic Llq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;
.implements Lyads/cc3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Llq9;->b:Ljava/lang/Object;

    iput-object p2, p0, Llq9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Llq9;->b:Ljava/lang/Object;

    check-cast v0, Lyads/dc3;

    iget-object p0, p0, Llq9;->c:Ljava/lang/Object;

    check-cast p0, Lyads/hc3;

    invoke-static {v0, p0, p1}, Lyads/hc3;->a(Lyads/dc3;Lyads/hc3;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Llq9;->b:Ljava/lang/Object;

    check-cast v0, Lyads/ne;

    iget-object p0, p0, Llq9;->c:Ljava/lang/Object;

    check-cast p0, Lyads/zv4;

    check-cast p1, Lyads/pe;

    invoke-static {v0, p0, p1}, Lyads/cj0;->b(Lyads/ne;Lyads/zv4;Lyads/pe;)V

    return-void
.end method
