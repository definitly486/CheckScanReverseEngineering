.class public final synthetic Ltq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(IJLyads/ne;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Ltq9;->b:Lyads/ne;

    iput p1, p0, Ltq9;->c:I

    iput-wide p2, p0, Ltq9;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Ltq9;->d:J

    check-cast p1, Lyads/pe;

    iget-object v2, p0, Ltq9;->b:Lyads/ne;

    iget p0, p0, Ltq9;->c:I

    invoke-static {v2, p0, v0, v1, p1}, Lyads/cj0;->a(Lyads/ne;IJLyads/pe;)V

    return-void
.end method
