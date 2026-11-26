.class public final synthetic Lh3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/ne6;

.field public final synthetic c:J

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(IJLyads/ne6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lh3a;->b:Lyads/ne6;

    iput-wide p2, p0, Lh3a;->c:J

    iput p1, p0, Lh3a;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lh3a;->c:J

    iget v2, p0, Lh3a;->d:I

    iget-object p0, p0, Lh3a;->b:Lyads/ne6;

    invoke-virtual {p0, v0, v1, v2}, Lyads/ne6;->a(JI)V

    return-void
.end method
