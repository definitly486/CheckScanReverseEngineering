.class public final La41$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La41;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La41;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:La41$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La41$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La41$b;->a:La41$b;

    return-void
.end method
