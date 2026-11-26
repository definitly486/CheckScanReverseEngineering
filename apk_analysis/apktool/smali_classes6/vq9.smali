.class public final synthetic Lvq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:J

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(IJLyads/ne;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lvq9;->b:Lyads/ne;

    iput-wide p2, p0, Lvq9;->c:J

    iput p1, p0, Lvq9;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lvq9;->d:I

    check-cast p1, Lyads/pe;

    iget-object v1, p0, Lvq9;->b:Lyads/ne;

    iget-wide v2, p0, Lvq9;->c:J

    invoke-static {v1, v2, v3, v0, p1}, Lyads/cj0;->a(Lyads/ne;JILyads/pe;)V

    return-void
.end method
