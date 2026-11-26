.class public final Lgw2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgw2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgw2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lgw2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgw2$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgw2$a;->a:Lgw2$a;

    return-void
.end method
