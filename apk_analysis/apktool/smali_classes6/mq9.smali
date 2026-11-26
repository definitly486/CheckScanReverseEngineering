.class public final synthetic Lmq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(ILyads/ne;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmq9;->b:Lyads/ne;

    iput p1, p0, Lmq9;->c:I

    iput-boolean p3, p0, Lmq9;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lmq9;->d:Z

    check-cast p1, Lyads/pe;

    iget-object v1, p0, Lmq9;->b:Lyads/ne;

    iget p0, p0, Lmq9;->c:I

    invoke-static {v1, p0, v0, p1}, Lyads/cj0;->a(Lyads/ne;IZLyads/pe;)V

    return-void
.end method
