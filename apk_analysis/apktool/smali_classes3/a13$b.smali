.class public interface abstract La13$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final t1:Li01;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li01;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li01;-><init>(I)V

    sput-object v0, La13$b;->t1:Li01;

    return-void
.end method
