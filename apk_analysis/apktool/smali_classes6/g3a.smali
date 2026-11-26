.class public final synthetic Lg3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/ne6;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lyads/ne6;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3a;->b:Lyads/ne6;

    iput-object p2, p0, Lg3a;->c:Ljava/lang/Object;

    iput-wide p3, p0, Lg3a;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg3a;->c:Ljava/lang/Object;

    iget-wide v1, p0, Lg3a;->d:J

    iget-object p0, p0, Lg3a;->b:Lyads/ne6;

    invoke-virtual {p0, v0, v1, v2}, Lyads/ne6;->a(Ljava/lang/Object;J)V

    return-void
.end method
