.class public final Ls59$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls59$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls59$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls59$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls59$c$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ls59$c$a;->a:Ls59$c$a;

    return-void
.end method
