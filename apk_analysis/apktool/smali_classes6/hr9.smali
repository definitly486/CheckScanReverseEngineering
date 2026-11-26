.class public final synthetic Lhr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lyads/ne;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhr9;->b:Lyads/ne;

    iput p2, p0, Lhr9;->c:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lhr9;->c:F

    check-cast p1, Lyads/pe;

    iget-object p0, p0, Lhr9;->b:Lyads/ne;

    invoke-static {p0, v0, p1}, Lyads/cj0;->a(Lyads/ne;FLyads/pe;)V

    return-void
.end method
