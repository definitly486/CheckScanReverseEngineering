.class public final synthetic Ldr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:Lyads/p04;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lyads/ne;Lyads/p04;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldr9;->b:Lyads/ne;

    iput-object p2, p0, Ldr9;->c:Lyads/p04;

    iput p3, p0, Ldr9;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ldr9;->d:I

    check-cast p1, Lyads/pe;

    iget-object v1, p0, Ldr9;->b:Lyads/ne;

    iget-object p0, p0, Ldr9;->c:Lyads/p04;

    invoke-static {v1, p0, v0, p1}, Lyads/cj0;->a(Lyads/ne;Lyads/p04;ILyads/pe;)V

    return-void
.end method
