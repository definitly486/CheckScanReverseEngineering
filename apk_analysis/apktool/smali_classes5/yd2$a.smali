.class public final Lyd2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyd2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lbn1;

.field public final b:Z


# direct methods
.method public constructor <init>(Lbn1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyd2$a;->a:Lbn1;

    iput-boolean p2, p0, Lyd2$a;->b:Z

    return-void
.end method
