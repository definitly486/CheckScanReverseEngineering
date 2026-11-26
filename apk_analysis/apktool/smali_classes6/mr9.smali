.class public final synthetic Lmr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lyads/ne;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmr9;->b:Lyads/ne;

    iput-object p2, p0, Lmr9;->c:Ljava/lang/Object;

    iput-wide p3, p0, Lmr9;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lmr9;->d:J

    check-cast p1, Lyads/pe;

    iget-object v2, p0, Lmr9;->b:Lyads/ne;

    iget-object p0, p0, Lmr9;->c:Ljava/lang/Object;

    invoke-static {v2, p0, v0, v1, p1}, Lyads/cj0;->a(Lyads/ne;Ljava/lang/Object;JLyads/pe;)V

    return-void
.end method
