.class public final Lcs5$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcs5$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcs5$a;


# direct methods
.method public constructor <init>(Lcs5$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcs5$a$a;->b:Lcs5$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcs5$a$a;->b:Lcs5$a;

    iget-object p0, p0, Lcs5$a;->d:Lcp2;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method
