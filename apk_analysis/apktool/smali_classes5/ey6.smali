.class public final Ley6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ley6$a;,
        Ley6$b;
    }
.end annotation


# static fields
.field public static final a:Ley6$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ley6$b;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1, v1}, Ley6$b;-><init>([BII)V

    sput-object v0, Ley6;->a:Ley6$b;

    return-void
.end method
