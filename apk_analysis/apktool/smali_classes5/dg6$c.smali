.class public final Ldg6$c;
.super Ldg6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldg6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Ldg6$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldg6$c;

    invoke-direct {v0}, Ldg6;-><init>()V

    sput-object v0, Ldg6$c;->a:Ldg6$c;

    return-void
.end method
