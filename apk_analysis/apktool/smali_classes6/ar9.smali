.class public final synthetic Lar9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lyads/ne;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lar9;->b:Lyads/ne;

    iput-wide p2, p0, Lar9;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lar9;->c:J

    check-cast p1, Lyads/pe;

    iget-object p0, p0, Lar9;->b:Lyads/ne;

    invoke-static {p0, v0, v1, p1}, Lyads/cj0;->a(Lyads/ne;JLyads/pe;)V

    return-void
.end method
