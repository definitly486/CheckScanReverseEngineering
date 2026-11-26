.class public final Lw66$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw66$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw66$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lw66$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw66$a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw66$a$a;->a:Lw66$a$a;

    return-void
.end method
