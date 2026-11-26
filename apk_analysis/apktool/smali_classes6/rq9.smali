.class public final synthetic Lrq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lyads/ne;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrq9;->b:Lyads/ne;

    iput p2, p0, Lrq9;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lrq9;->c:I

    check-cast p1, Lyads/pe;

    iget-object p0, p0, Lrq9;->b:Lyads/ne;

    invoke-static {p0, v0, p1}, Lyads/cj0;->a(Lyads/ne;ILyads/pe;)V

    return-void
.end method
